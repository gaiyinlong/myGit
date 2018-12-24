package coms.hrsoft.bean;

import java.io.Serializable;

/**
 * 水表
 */
public class WaterForm implements Serializable {

    private  String waterId;
    private  String waterName;
    private  int typeId;
    private  EnergyType energyType;


    private int   waterUpperLimit;
    private int  waterLowerLimit;
    private int   useWaterAmount;
    private int    creatorId;
    private String creatorName;

    private  String createDate;
    private  int areaId;
    private  int waterTypeId;


    public String getWaterId() {
        return waterId;
    }



    public void setWaterId(String waterId) {
        this.waterId = waterId;
    }

    public String getWaterName() {
        return waterName;
    }

    public void setWaterName(String waterName) {
        this.waterName = waterName;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getWaterUpperLimit() {
        return waterUpperLimit;
    }

    public void setWaterUpperLimit(int waterUpperLimit) {
        this.waterUpperLimit = waterUpperLimit;
    }

    public int getWaterLowerLimit() {
        return waterLowerLimit;
    }

    public void setWaterLowerLimit(int waterLowerLimit) {
        this.waterLowerLimit = waterLowerLimit;
    }

    public int getUseWaterAmount() {
        return useWaterAmount;
    }

    public void setUseWaterAmount(int useWaterAmount) {
        this.useWaterAmount = useWaterAmount;
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

    public int getWaterTypeId() {
        return waterTypeId;
    }

    public void setWaterTypeId(int waterTypeId) {
        this.waterTypeId = waterTypeId;
    }

    public EnergyType getEnergyType() {
        return energyType;
    }

    public void setEnergyType(EnergyType energyType) {
        this.energyType = energyType;
    }
}
