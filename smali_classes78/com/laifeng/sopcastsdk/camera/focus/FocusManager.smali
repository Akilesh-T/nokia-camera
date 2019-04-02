.class public Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mListener:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "cam"    # Landroid/hardware/Camera;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->mListener:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->mListener:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;

    invoke-interface {v0, p1}, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;->onFocusReturns(Z)V

    .line 36
    :cond_0
    return-void
.end method

.method public refocus()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->doAutofocus(Landroid/hardware/Camera$AutoFocusCallback;)Z

    move-result v0

    .line 24
    .local v0, "focusResult":Z
    if-eqz v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->mListener:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->mListener:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;

    invoke-interface {v1}, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;->onFocusStart()V

    .line 29
    :cond_0
    return-void
.end method

.method public setListener(Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->mListener:Lcom/laifeng/sopcastsdk/camera/focus/FocusManager$FocusListener;

    .line 20
    return-void
.end method
