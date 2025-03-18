# SvgImageTutorialWithSwiftUI
svg url 이미지 표시하기

1. package 설치하기

    https://github.com/SDWebImage/SDWebImageSwiftUI

    https://github.com/SDWebImage/SDWebImageSVGCoder

    SDImageSVGCoder를 설치하면 자동으로 SDImage도 함께 설치됩니다.  

    <br/>

2. SwiftUI App.init() method에 작성.   

    ```
    init() {
        SDImageCodersManager.shared.addCoder(SDImageSVGCoder.shared)
    }
    ```

    <br/>

3. svg url로드가 안 될 경우 네트워크 보안 정책 확인하기   
    project 특정 도메인만 예외 설정하기(프로젝트 > TARGETS > info 탭)
    
    ```
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSExceptionDomains</key>
        <dict>
            <key>example.com</key>
            <dict>
                <key>NSIncludesSubdomains</key>
                <true/>
                <key>NSExceptionAllowsInsecureHTTPLoads</key>
                <true/>
                <key>NSExceptionRequiresForwardSecrecy</key>
                <false/>
                <key>NSExceptionMinimumTLSVersion</key>
                <string>TLSv1.2</string>
            </dict>
        </dict>
    </dict>
    ```
    
    * 해석
        * NSExceptionDomains: 예외 도메인을 정의
        * example.com: 해당 도메인에 대해 예외 설정
        * NSIncludesSubdomains: 하위 도메인(sub.example.com)도 포함
        * NSExceptionAllowsInsecureHTTPLoads: HTTP 허용
        * NSExceptionRequiresForwardSecrecy: 완벽한 순방향 보안(Forward Secrecy) 요구  여부
        * NSRequiresCertificateTransparency: 사용 중인 인증서가 CT 지원하는지 여부



