<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/template" id="addMenu">
                        <li>
                            <input class="menuCheck" name="king" onclick="Countchecked(this)" type="checkbox"/>
                            <span class="oneMenuName"><@=menu.name@></span>
                            <i class="fas fa-ellipsis-h"></i>
                            <span class="oneMenuPrice"><@=menu.price@></span>원
                            <button><i class="fas fa-eraser"></i></button>
							<input class="menuName" name="name" type="hidden" value="<@=menu.name@>"/>
							<input class="menuPrice" name="price" type="hidden" value="<@=menu.price@>"/>
							
                        </li>
                    </script>
                    
                    