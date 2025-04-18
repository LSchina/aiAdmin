package com.java1234.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName sys_department
 */
@TableName(value ="sys_department")
@Data
public class SysDepartment implements Serializable {
    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 部门id
     */
    @TableField(value = "de_id")
    private Integer deId;

    /**
     * 岗位人员id
     */
    @TableField(value = "user_id")
    private Integer userId;

    /**
     * 人员姓名
     */
    @TableField(value = "user_name")
    private String userName;

    /**
     * 部门名称||岗位名称
     */
    @TableField(value = "name")
    private String name;

    /**
     * 父级id，部门与岗位之间的关系
     */
    @TableField(value = "pid")
    private Integer pid;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}