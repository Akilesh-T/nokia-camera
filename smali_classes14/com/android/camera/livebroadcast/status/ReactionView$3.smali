.class Lcom/android/camera/livebroadcast/status/ReactionView$3;
.super Ljava/lang/Object;
.source "ReactionView.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/status/ReactionView;->loadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/status/ReactionView;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/status/ReactionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/ReactionView$3;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView$3;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$1000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 195
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/ReactionView$3;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$1000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 190
    return-void
.end method
