.class public interface abstract Lcom/android/camera/one/OneCamera$ScreenFlashController;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenFlashController"
.end annotation


# virtual methods
.method public abstract hideScreenFlash()V
.end method

.method public abstract showScreenFlash(Ljava/lang/Runnable;)Z
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
