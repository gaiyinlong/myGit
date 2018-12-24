package coms.hrsoft.bean;




import java.io.Serializable;

/**
 * 车间信息
 */
public class Areas  implements Serializable {

    private int areaId;
    private String areaName;
    private String areaLeader;
    private int  creatorId;
    private String creatorName;

    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    public int getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(int creatorId) {
        this.creatorId = creatorId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAreaLeader() {
        return areaLeader;
    }

    public void setAreaLeader(String areaLeader) {
        this.areaLeader = areaLeader;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }





}
