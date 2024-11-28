<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<c:set var="pageTitle" value="글쓰기" />
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<!-- jQuery 추가 (필요시 Toast UI Editor와의 호환성) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Toast UI Editor CSS & JS -->
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
<link rel="stylesheet" href="https://uicdn.toast.com/tui-color-picker/latest/tui-color-picker.min.css">
<link rel="stylesheet" href="https://uicdn.toast.com/editor-plugin-color-syntax/latest/toastui-editor-plugin-color-syntax.min.css">
<script src="https://uicdn.toast.com/tui-color-picker/latest/tui-color-picker.min.js"></script>
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="https://uicdn.toast.com/editor-plugin-color-syntax/latest/toastui-editor-plugin-color-syntax.min.js"></script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const { Editor } = toastui;
    const { colorSyntax } = Editor.plugin;
    
    const editor = new Editor({
      el: document.querySelector('#toast-ui-editor'),
      height: '500px',
      initialEditType: 'markdown',
      previewStyle: 'tab',
      plugins: [colorSyntax]
    });

 
    window.submitForm = function(form) {
      const markdown = editor.getMarkdown().trim();

      if (form.title.value.trim().length === 0) {
        alert('제목을 입력해주세요');
        form.title.focus();
        return false;
      }

      if (markdown.length === 0) {
        alert('내용을 입력해주세요');
        editor.focus();
        return false;
      }

      return true; 
    }
    form.body.value = markdown;
  
    console.log('Editor Initialized:', editor);
  });
</script>

<section class="mt-8">
  <div class="container mx-auto">
    <form action="doWrite" method="post" onsubmit="return submitForm(this);">
      <div class="w-9/12 mx-auto">
        <table class="table table-lg">
          <tr>
            <th>게시판</th>
            <td>
              <div class="flex">
                <div>
                  <label class="flex items-center">
                    <input class="radio radio-sm" type="radio" name="boardId" value="1" />&nbsp;&nbsp;공지사항
                  </label>
                </div>
                <div class="w-16"></div>
                <div>
                  <label class="flex items-center">
                    <input class="radio radio-sm" type="radio" name="boardId" value="2" checked />&nbsp;&nbsp;자유
                  </label>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th>제목</th>
            <td>
              <input class="input input-bordered w-full max-w-xs" type="text" name="title" placeholder="제목을 입력해주세요" />
            </td>
          </tr>
          <tr>
            <th>내용</th>
            <td>
       
              <div id="toast-ui-editor"></div>
              
              <textarea class="hidden" name="body"></textarea>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <div class="flex justify-center">
                <button class="btn btn-active btn-wide" type="submit">작성</button>
              </div>
            </td>
          </tr>
        </table>
      </div>
    </form>
    <div class="w-9/12 mx-auto mt-3 text-sm flex justify-between">
      <div>
        <button class="btn btn-active btn-sm" onclick="history.back();">뒤로가기</button>
      </div>
    </div>
  </div>
</section>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>

<style>

  #toast-ui-editor { display: block !important; }

  .hidden {
    display: none;
  }
</style>
