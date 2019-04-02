.class public interface abstract Lcom/android/camera/one/OneCamera$SceneRecognitionListener;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SceneRecognitionListener"
.end annotation


# virtual methods
.method public abstract onAWBGains([F)V
.end method

.method public abstract onSceneClassifyResult(Lcom/android/camera/scenerecognition/SceneClassifyLabel;)V
.end method
