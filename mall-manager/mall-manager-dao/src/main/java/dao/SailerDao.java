package dao;

import com.mall.service.Sailer;

import java.util.List;

public interface SailerDao {
    //    添加数据
    public void insertSailer(Sailer sailer);
    //    根据id 删除数据
    public void deleteSailerBySjname(String sjname);
    //    修改数据
    public void updateUser(Sailer sailer);

    //    根据id 查询数据
    public Sailer selectBySjname(String sjname);
    //    查询emp中的所有数据
    public List<Sailer> selectAll();
}
