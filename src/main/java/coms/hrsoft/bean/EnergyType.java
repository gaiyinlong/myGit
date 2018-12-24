package coms.hrsoft.bean;

import java.io.Serializable;

/**
 * 能源类型
 */
public class EnergyType implements Serializable {

 private int TypeId;
 private  String typeName;

    public EnergyType(int typeId, String typeName) {
        TypeId = typeId;
        this.typeName = typeName;
    }

    public int getTypeId() {
        return TypeId;
    }

    public void setTypeId(int typeId) {
        TypeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
