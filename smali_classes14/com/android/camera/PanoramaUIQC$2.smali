.class Lcom/android/camera/PanoramaUIQC$2;
.super Ljava/lang/Object;
.source "PanoramaUIQC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaUIQC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaUIQC;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaUIQC;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaUIQC;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-static {v1}, Lcom/android/camera/PanoramaUIQC;->access$000(Lcom/android/camera/PanoramaUIQC;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0800b3

    .line 563
    .local v0, "msgId":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-static {v1}, Lcom/android/camera/PanoramaUIQC;->access$100(Lcom/android/camera/PanoramaUIQC;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-static {v1}, Lcom/android/camera/PanoramaUIQC;->access$000(Lcom/android/camera/PanoramaUIQC;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    iget-object v2, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-static {v2}, Lcom/android/camera/PanoramaUIQC;->access$100(Lcom/android/camera/PanoramaUIQC;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/PanoramaUIQC;->access$200(Lcom/android/camera/PanoramaUIQC;IZ)I

    move-result v0

    .line 565
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-static {v1, v3}, Lcom/android/camera/PanoramaUIQC;->access$102(Lcom/android/camera/PanoramaUIQC;I)I

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaUIQC$2;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-static {v1, v0}, Lcom/android/camera/PanoramaUIQC;->access$300(Lcom/android/camera/PanoramaUIQC;I)V

    .line 568
    return-void

    .line 562
    .end local v0    # "msgId":I
    :cond_1
    const v0, 0x7f0800b4

    goto :goto_0
.end method
