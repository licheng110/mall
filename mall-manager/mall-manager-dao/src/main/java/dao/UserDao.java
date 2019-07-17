package dao;

import com.mall.service.User;

import java.util.List;

public interface UserDao {
    //    添加数据
    public void insertUser(User user);
    //    根据id 删除数据
    public void deleteUserByUsername(String username);
    //    修改数据
    public void updateUser(User user);

    public void updateUserInfo(User user, String username);
    //    根据id 查询数据
    public User selectByUsername(String username);
    //    查询emp中的所有数据
    public List<User> selectAll();
}
