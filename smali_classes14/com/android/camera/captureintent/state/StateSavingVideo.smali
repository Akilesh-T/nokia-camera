.class public Lcom/android/camera/captureintent/state/StateSavingVideo;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateSavingVideo.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateSaveVideo"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateSavingVideo;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Landroid/net/Uri;)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p3, "videoUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 59
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateSavingVideo;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 60
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateSavingVideo;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 61
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateSavingVideo;->mVideoUri:Landroid/net/Uri;

    .line 62
    return-void
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateReviewingVideo;Lcom/android/camera/async/RefCountBase;Landroid/net/Uri;)Lcom/android/camera/captureintent/state/StateSavingVideo;
    .locals 1
    .param p0, "reviewingVideo"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;
    .param p2, "videoUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateReviewingVideo;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/android/camera/captureintent/state/StateSavingVideo;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateSavingVideo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/captureintent/state/StateSavingVideo;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public onEnter()Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "resultIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateSavingVideo;->mVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateSavingVideo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateSavingVideo;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {p0, v1, v0}, Lcom/android/camera/captureintent/state/StateIntentCompleted;->from(Lcom/android/camera/captureintent/state/StateSavingVideo;Lcom/android/camera/async/RefCountBase;Landroid/content/Intent;)Lcom/android/camera/captureintent/state/StateIntentCompleted;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateSavingVideo;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 76
    return-void
.end method
