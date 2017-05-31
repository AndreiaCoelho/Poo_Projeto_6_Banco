<%@page import="com.domain.quiz.GLOBAL"%>
<%@page import="com.domain.quiz.DataBase"%>

<% 
    DataBase db = new DataBase();
    String login = request.getParameter("nomeLogin");
    String senha = request.getParameter("senhaLogin");
    if(db.Logar(login, senha) == true){
        if(GLOBAL.TIPOUSUARIO == 1){
            out.print("<script>window.location.href = 'administrador.jsp'</script>");
        }else{
            out.print("<script>window.location.href = 'usuario.jsp'</script>");
        }
    }else{
        out.print("<script>alert('Usuario ou senha invalidos!')</script>");
        out.print("<script>window.location.href = 'index.jsp'</script>");
    }
%>