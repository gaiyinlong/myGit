package coms.hrsoft.bean;

import java.io.Serializable;

/**
 * 气表
 */
public class GasForm implements Serializable {


    private  int gasId;
    private  String gasName;
    private  int typeId;
    private  int gasUpperLimit;
    private  int gasLowerLimit;
    private  int useGasAmount;
    private  int creatorId;
    private  String creatorName;
    private  String createDate;
    private  int areaId;
    private  int gasTypeId;

    public int getGasId() {
        return gasId;
    }

    public void setGasId(int gasId) {
        this.gasId = gasId;
    }

    public String getGasName() {
        return gasName;
    }

    public void setGasName(String gasName) {
        this.gasName = gasName;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getGasUpperLimit() {
        return gasUpperLimit;
    }

    public void setGasUpperLimit(int gasUpperLimit) {
        this.gasUpperLimit = gasUpperLimit;
    }

    public int getGasLowerLimit() {
        return gasLowerLimit;
    }

    public void setGasLowerLimit(int gasLowerLimit) {
        this.gasLowerLimit = gasLowerLimit;
    }

    public int getUseGasAmount() {
        return useGasAmount;
    }

    public void setUseGasAmount(int useGasAmount) {
        this.useGasAmount = useGasAmount;
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

    public int getGasTypeId() {
        return gasTypeId;
    }

    public void setGasTypeId(int gasTypeId) {
        this.gasTypeId = gasTypeId;
    }
}
