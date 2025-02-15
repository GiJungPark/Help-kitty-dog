package com.elice.kittyandpuppy.module.post.service;

import com.elice.kittyandpuppy.module.post.dto.RequestPost;
import com.elice.kittyandpuppy.module.post.dto.ResponsePost;
import com.elice.kittyandpuppy.module.post.entity.Post;
import com.elice.kittyandpuppy.module.post.repository.PostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@RequiredArgsConstructor
@Service
@Transactional
public class PostService {
    private final PostRepository postRepository;

    // Community 관련 서비스
    @Transactional(readOnly = true)
    public Page<ResponsePost> getCommunityList(String search, Pageable pageable) {
        if (search != null && !search.isEmpty()) {
            return postRepository.findByTitleContaining(search, pageable)
                    .map(ResponsePost::new);  // 검색 결과를 ResponsePost DTO로 변환
        } else {
            return postRepository.findAll(pageable).map(ResponsePost::new);  // 모든 게시물 반환
        }
    }

    @Transactional(readOnly = true)
    public Post getCommunityDetail(Long id) {
        return postRepository.findById(id).orElse(null);
    }


    public Post createCommunityDetail(RequestPost requestPost) {
        Post entity = requestPost.toEntity(requestPost);

        if (entity.getId() != null) {
            return null;
        }
        return postRepository.save(entity);
    }

    public Post updateCommunityDetail(Long id, RequestPost requestPost) {

        // id 로 해당 게시글이 있는지 찾기
        Post entity = postRepository.findById(id).orElse(null);

        // entity 가 있으면 수정하고 저장
        if (entity != null) {
            entity.updatePatch(requestPost.toEntity(requestPost));
//            return postRepository.save(entity);
            return entity;
        } else {
            return null;
        }
    }

    public void deleteCommunity(Long id) {
        // 대상 찾기
        Post target = postRepository.findById(id).orElse(null);

        // 삭제하고자 하는 엔티티자 존재하면 삭제
        if (target != null) {
            postRepository.delete(target);
        }

    }

    @Transactional
    public Post incrementViews(Long postId) {
        Post post = postRepository.findById(postId)
                .orElseThrow(() -> new IllegalArgumentException("Post not found"));
        post.incrementViewCount();
        return postRepository.save(post);

    }
}