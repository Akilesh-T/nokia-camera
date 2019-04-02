.class Lcom/android/camera/VideoModule$6;
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
    .line 671
    iput-object p1, p0, Lcom/android/camera/VideoModule$6;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/camera/VideoModule$6;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)V

    .line 684
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/camera/VideoModule$6;->this$0:Lcom/android/camera/VideoModule;

    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule$6;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$2200(Lcom/android/camera/VideoModule;Z)V

    goto :goto_0
.end method
