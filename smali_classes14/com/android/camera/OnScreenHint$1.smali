.class Lcom/android/camera/OnScreenHint$1;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/android/camera/OnScreenHint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/OnScreenHint;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/OnScreenHint$1;->this$0:Lcom/android/camera/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/OnScreenHint$1;->this$0:Lcom/android/camera/OnScreenHint;

    invoke-static {v0}, Lcom/android/camera/OnScreenHint;->access$000(Lcom/android/camera/OnScreenHint;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenHint$1;->this$0:Lcom/android/camera/OnScreenHint;

    invoke-static {v0}, Lcom/android/camera/OnScreenHint;->access$100(Lcom/android/camera/OnScreenHint;)V

    goto :goto_0
.end method
