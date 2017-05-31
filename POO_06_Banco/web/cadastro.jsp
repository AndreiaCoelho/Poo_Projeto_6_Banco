<%@page import="com.domain.quiz.DataBase"%>
<%
    DataBase db = new DataBase();
    String login = request.getParameter("nomeCadastro");
    String senha = request.getParameter("senhaCadastro");
    String senha2 = request.getParameter("senha2");
    String tipo = request.getParameter("tipo");

    if (senha.equals(senha2)) {
        if (db.Testar(login) == false) {
            if (db.Cadastro(login, senha, tipo)) {
                out.print("<script>alert('Cadastro realizado com sucesso!')</script>");
                out.print("<script>window.location.href = 'index.jsp'</script>");
            } else {
                out.print("<script>alert('Erro!')</script>");
                out.print("<script>window.location.href = 'index.jsp'</script>");
            }
        } else {
            out.print("<script>alert('Este usuario ja existe!')</script>");
            out.print("<script>window.location.href = 'index.jsp'</script>");
        }
    } else {
        out.print("<script>alert('Senhas não são iguais!')</script>");
        out.print("<script>window.location.href = 'index.jsp'</script>");
    }

%>