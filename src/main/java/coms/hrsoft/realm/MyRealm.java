package coms.hrsoft.realm;


import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import coms.hrsoft.bean.User;
import coms.hrsoft.mapper.UserMapper;



public class MyRealm extends AuthorizingRealm{
	
	@Autowired 
    private UserMapper userMapper;  
  
    //Ϊ��ǰ��¼�ɹ����û�����Ȩ�޺ͽ�ɫ���Ѿ���¼�ɹ��ˡ�  
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {  
        String username=(String) principals.getPrimaryPrincipal();  
        SimpleAuthorizationInfo  authorizationInfo=new SimpleAuthorizationInfo();  
//        authorizationInfo.setRoles(userServiceImpl.getRoles(username));  
//        authorizationInfo.setStringPermissions(userServiceImpl.getPermissions(username));  
        return authorizationInfo;  
    }  
    //��֤��ǰ��¼���û�����ȡ��֤��Ϣ��  
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {  
        String username=(String) token.getPrincipal();//��ȡ�û���  
        User user=userMapper.findByUsername(username);  
        if(user!=null){  
            AuthenticationInfo authcInfo =new SimpleAuthenticationInfo(user.getUserName(),user.getUserPass(),"myRealm");  
            return authcInfo;  
        }else{  
            return null;  
        }  
    }  

}
