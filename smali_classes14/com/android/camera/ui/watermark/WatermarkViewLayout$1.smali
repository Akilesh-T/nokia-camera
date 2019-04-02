.class Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;
.super Ljava/lang/Object;
.source "WatermarkViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/watermark/WatermarkViewLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-static {}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$100(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$200(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$300(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$100(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$200(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/CameraActivity;->onLocationSelected(DD)V

    .line 70
    return-void
.end method
