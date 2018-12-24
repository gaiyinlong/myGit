package coms.hrsoft.bean;

import java.io.Serializable;

/**
 * 电表
 */
public class ElectricityForm implements Serializable {


        private String electricityId;
        private String electricityName;
        private int typeId;
        private int elecUpperLimit;
        private int elecLowerLimit;
        private int useElecAmount;
        private  int creatorId;
        private  String creatorName;
        private  String createDate;
        private  int areaId;

    public String getElectricityId() {
        return electricityId;
    }

    public void setElectricityId(String electricityId) {
        this.electricityId = electricityId;
    }

    public String getElectricityName() {
        return electricityName;
    }

    public void setElectricityName(String electricityName) {
        this.electricityName = electricityName;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getElecUpperLimit() {
        return elecUpperLimit;
    }

    public void setElecUpperLimit(int elecUpperLimit) {
        this.elecUpperLimit = elecUpperLimit;
    }

    public int getElecLowerLimit() {
        return elecLowerLimit;
    }

    public void setElecLowerLimit(int elecLowerLimit) {
        this.elecLowerLimit = elecLowerLimit;
    }

    public int getUseElecAmount() {
        return useElecAmount;
    }

    public void setUseElecAmount(int useElecAmount) {
        this.useElecAmount = useElecAmount;
    }

    public int getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(int creatorId) {
        this.creatorId = creatorId;
    }

    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }
}
