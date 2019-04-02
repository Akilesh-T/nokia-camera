.class public Lcom/laifeng/sopcastsdk/utils/SopCastUtils;
.super Ljava/lang/Object;
.source "SopCastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOverLOLLIPOP()Z
    .locals 2

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V
    .locals 2
    .param p0, "processor"    # Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/laifeng/sopcastsdk/utils/SopCastUtils$1;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils$1;-><init>(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-interface {p0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;->process()V

    goto :goto_0
.end method
