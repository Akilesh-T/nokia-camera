.class final Lcom/android/camera/effect/util/EffectFileUtil$1;
.super Ljava/lang/Object;
.source "EffectFileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/util/EffectFileUtil;->initFiles(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->access$000()V

    .line 57
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->access$100()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 58
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->access$200()V

    .line 59
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->access$300()V

    .line 60
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->access$400()V

    .line 62
    :cond_0
    return-void
.end method
