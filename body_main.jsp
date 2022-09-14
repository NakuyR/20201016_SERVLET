<%@ page contentType = "text/html;charset=utf-8" %>
<%! String greeting = "꾸팡닷컴에 오신것을 환영합니다.";
    String tagline = "하단페이지:확인";%>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
            </h1>
        </div>
    </div>
    <div class="container">
        <div class="text-container">
            <h3>
                <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>
    <div class="card bg-dark text-white">
        <img src="image/event.jpg" class="card-img" alt="이벤트">
        <div class="card-img-overlay">
        	<h5 class="card-title">모니터 이벤트</h5>
        	<p class="card-text">출처:조이젠</p>
        </div>
	</div>
	<div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">60Hz 모니터</a>
        <a href="#" class="list-group-tiem list-group-item-action">144Hz 모니터</a>
        <a href="#" class="list-group-tiem list-group-item-action">165Hz 모니터</a>
        <a href="#" class="list-group-tiem list-group-item-action">240Hz 모니터</a>
        
</div>