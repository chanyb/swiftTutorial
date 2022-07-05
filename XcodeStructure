[[iOS 앱의 생명주기에 관하여..]]
  1. UIKit이라는 프레임워크가 main함수를관리한다.
  2. UIkit은 main함수를 다루는 과정에서 UIApplicationMain함수를 실행한다.
  3. UIApplicationMain함수를 통해 UIApplication객체가 실행된다.
    [[UIApplication]] 객체를 통해 개발자가 앱의 실행에 관여할 수 있다.
    3-1. @UIApplicationMain 또는 @Main annotation이 있는 클래스를 찾아 AppDelegate 객체를 생성한다.
    3-2. Touch 등 사용자의 action을 받는 "Main Event(Run) Loop"을 실행한다.
    3-3. "Main Run Loop"은 메인 스레드에서 실행된다.
    3-3-1. 유저가 이벤트를 일으키면, 시스템을 통해 event가 생성된다.
    3-3-2. UIKit 프레임워크를 통해 생성된 port로 해당 이벤트가 앱으로 전달된다.
    3-3-3. 이벤트는 앱 내부적으로 Queue의 형태로 Event Queue에 쌓인다.
    3-3-4. Event Queue의 이벤트들은 Main Run Loop에 하나씩 매핑된다.
    3-3-5. UIApplication 객체는 가장 먼저 어떤 것을 실행할 지 결정한다.


[[App State]]
 : 앱의 상태는 총 5가지가 있음
  1. Not Running : 앱이 실행되지 않았거나 완전히 종료되어 동작하지 않는 상태
  2. Inactive(Foreground) : 앱이 실행되면서 foreground에 진입하지만, 어떠한 이벤트도 받지 않은 상태 (앱의 전환상태에서잠깐 머무는 단계)
  3. Active(Foreground) : 앱이 실행중이며, foreground에 있고, 이벤트를 받고 있는 상태
  4. Background : 앱이 백그라운드에 있으며, 다른 앱으로의 전환 또는 홈 화면에 있는 상태. 일정시간 후 Suspended로 전환된다.
  5. Suspended : Background에 있는 앱이 아무 코드도 실행하지 않는 상태. 특별한 작업을 하고 있지 않은 상태. 배터리사용x, OS가 memory에서 종료 가능


[[AppDelegate]]
 - (iOS13 이전) AppDelegate가 app의 launch, foregrouding, backgrounding 등 Life-Cycle을 관리하는 책임을 가졌다.
 - (현재) 
   1. application의 entry point 역할과, application level의 life-cycle을 관리하는 역할을 한다. AppDelegate.swift에는 중요한 세개의 메서드가 있다.
     1) func application(_: didFinishLaunchingWithOptions: ) -> Bool
       * application의 setup을 진행하는 메서드

     2) func application(_: configurationForConnecting:options: ) -> UISceneConfiguration
       * application이 새로운 scene/window를 제공(최초 launch를 제외한)하려고 할 때 불리는 메서드.

     3) func application(_: didDiscardSceneSessions: )
       * 사용자가 scene을 버릴 때 불리는 메서드 (코드로서 없애거나, swipe로 multitasking window를 없애거나)

   2. 기타 역할
     1) URL 열기
     2) memory warning detecting
     3) terminate detecting


[[SceneDelegate]]
 - 화면에 무엇(Scene/window)을 보여줄 지 관리하는 역할
 - Apple이 제공하는 메서드
   1) scene(_: willConnectTo: options: )
     * UISceneSession lifecycle에서 제일 처음 불리는 메서드로 첫 contentView, 새로운 UIWindow를 생성하고 window의 rootViewController를 설정한다.

   2) sceneWillEnterForeground(_:)
     * scene이 끝나면 불리게 됨(2-1. background에서 foreground로 전환된 경우, 2-2. 처음 active상태가 된 경우)

   3) sceneDidBecomeActive(_:)
     * 다음으로 불리는 메소드는 sceneDidBecomeActie(_:)로 scene이 setup되고 화면에 보여지면서 사용 될 준비가 완료된 상태
     * inactive에서 active로 전환될 때도 불리고, inactive가 될 때 멈춘 Task도 재실행 할 수 있다.

   4) sceneWillResignActive(_:)
     * active에서 inactive로 전환될 때 불린다.
     * 사용중 전화가 오는 것처럼 interrupt 때문에 발생할 수 있다.
    
   5) sceneDidEnterBackground(_:)
     * scene이 foreground에서 background로 전환될 때 불린다.
     * 다시 foreground로 전환될 때 필요한 state/data 를 저장하거나 공유자원을 돌려주는 일을 수행하면 된다.

   6) sceneDidDisconnect(_:)
     * 앱종료와는 다르며, 공유자원을 돌려주는 일을 하면 된다.
     * 재생성이 어려운 데이터를 잘 보관하는 일도 하면 된다.
