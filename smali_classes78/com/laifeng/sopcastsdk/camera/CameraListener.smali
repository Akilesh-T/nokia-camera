.class public interface abstract Lcom/laifeng/sopcastsdk/camera/CameraListener;
.super Ljava/lang/Object;
.source "CameraListener.java"


# static fields
.field public static final CAMERA_DISABLED:I = 0x3

.field public static final CAMERA_NOT_SUPPORT:I = 0x1

.field public static final CAMERA_OPEN_FAILED:I = 0x4

.field public static final NO_CAMERA:I = 0x2


# virtual methods
.method public abstract onCameraChange()V
.end method

.method public abstract onOpenFail(I)V
.end method

.method public abstract onOpenSuccess()V
.end method
