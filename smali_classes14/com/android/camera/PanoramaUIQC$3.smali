.class Lcom/android/camera/PanoramaUIQC$3;
.super Ljava/lang/Object;
.source "PanoramaUIQC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaUIQC;->showUIWhenPanoStop()V
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
    .line 665
    iput-object p1, p0, Lcom/android/camera/PanoramaUIQC$3;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/camera/PanoramaUIQC$3;->this$0:Lcom/android/camera/PanoramaUIQC;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIQC;->access$400(Lcom/android/camera/PanoramaUIQC;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 668
    return-void
.end method
