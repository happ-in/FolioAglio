<?php
$allowed_ext = array('jpg','jpeg','png','gif');

$name = $_FILES['pdf']['name'];
$error = $_FILES['pdf']['error'];
$ext = array_pop(explode('.', $name));

if(!in_array($ext, $allowed_ext)) {
	echo "������ �ʴ� Ȯ�����Դϴ�.";
	exit;
}

if( $error != UPLOAD_ERR_OK ) {
	switch( $error ) {
		case UPLOAD_ERR_INI_SIZE:
		case UPLOAD_ERR_FORM_SIZE:
			echo "������ �ʹ� Ů�ϴ�. ($error)";
			break;
		case UPLOAD_ERR_NO_FILE:
			echo "������ ÷�ε��� �ʾҽ��ϴ�. ($error)";
			break;
		default:
			echo "������ ����� ���ε���� �ʾҽ��ϴ�. ($error)";
	}
	exit;
}

if(move_uploaded_file($_FILES['pdf']['tmp_name'], 'uploads/'.$name)){
    echo 'uploads/'.$name;
} else {
    echo "�̹��� ���ε带 �����Ͽ����ϴ�.";
}
?>