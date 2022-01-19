
(cl:in-package :asdf)

(defsystem "sound_localize-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AudioData" :depends-on ("_package_AudioData"))
    (:file "_package_AudioData" :depends-on ("_package"))
    (:file "SoundBearing" :depends-on ("_package_SoundBearing"))
    (:file "_package_SoundBearing" :depends-on ("_package"))
    (:file "SoundRaw" :depends-on ("_package_SoundRaw"))
    (:file "_package_SoundRaw" :depends-on ("_package"))
    (:file "SoundRode" :depends-on ("_package_SoundRode"))
    (:file "_package_SoundRode" :depends-on ("_package"))
  ))