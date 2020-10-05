/**
 * 	텍스트편집기 ckEditor관련 스크립트
 */
function name() {
	ClassicEditor 
	
    .create( document.querySelector( '#notice-textarea' ) ) 

    .then( editor => { 

        console.log( editor ); 

    } ) 

    .catch( error => { 

        console.error( error ); 

    } );

}