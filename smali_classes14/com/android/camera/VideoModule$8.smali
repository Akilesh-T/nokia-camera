.class Lcom/android/camera/VideoModule$8;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/camera/VideoModule$8;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/camera/VideoModule$8;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)V

    .line 728
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/camera/VideoModule$8;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule$8;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/camera/VideoModule$8;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2500(Lcom/android/camera/VideoModule;)V

    goto :goto_0
.end method
