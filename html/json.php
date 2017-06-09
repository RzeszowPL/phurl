<?php
if( !defined('PHURL' ) ) {
    header('HTTP/1.0 404 Not Found');
    exit();
}
ini_set('display_errors', 0);
?>
<?php
header('Content-Type: application/json; charset=utf-8');
		echo '{';
		if(count($_ERROR) > 0) {
			echo '"error": {';
			echo '"exists": true,';	
			echo '"message": [';
			foreach ($_ERROR as $key => $value) {
				echo '"'.$value.'",';
			}
			echo '"stop"';
			echo ']';
			echo '}';
		}
		else{	
		echo '"url": {';
			echo '"created": "'.$db_result['date_added'].'",';
			echo '"LongURL": {';
				echo '"url": "'.$url.'",';
				echo '"characters": '.strlen($url).'';
			echo '},';
			echo '"ShortURL": {';
				echo '"id": '.$id.',';
				echo '"characters": '.strlen($short_url).',';
				echo '"url": "'.$short_url.'",';
				echo '"code": {';
					echo '"code": "'.$db_result['code'].'",';
					echo '"normal": "'.SITE_URL_ONLY.'/'.$db_result['code'].'",';
					echo '"https": "https://'.SITE_URL_ONLY.'/'.$db_result['code'].'",';
					echo '"http": "http://'.SITE_URL_ONLY.'/'.$db_result['code'].'"';
				echo '},';
				echo '"alias": {';
					echo '"alias": "'.$db_result['alias'].'",';
					echo '"normal": "'.SITE_URL_ONLY.'/'.$db_result['alias'].'",';
					echo '"https": "https://'.SITE_URL_ONLY.'/'.$db_result['alias'].'",';
					echo '"http": "http://'.SITE_URL_ONLY.'/'.$db_result['alias'].'"';
				echo '}';
			echo '}';
		echo '}';
		}
		echo '}';