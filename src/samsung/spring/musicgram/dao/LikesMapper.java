package samsung.spring.musicgram.dao;


import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import samsung.spring.musicgram.dto.Likes;

@Mapper
public interface LikesMapper {

	public int isPressLike(HashMap<String, Object> map);
	public int pressLike(HashMap<String, Object> map);  
	public int cancelLike(HashMap<String, Object> map);  
	public int checkPressLike(HashMap<String, Object> map);
	public int isLikeOn(Likes like);
}
