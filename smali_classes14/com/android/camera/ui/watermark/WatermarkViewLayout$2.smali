.class Lcom/android/camera/ui/watermark/WatermarkViewLayout$2;
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
    .line 76
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$2;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout$2;->this$0:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-static {v0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->access$400(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V

    .line 80
    return-void
.end method
