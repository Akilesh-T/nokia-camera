.class Lcom/android/camera/ui/watermark/WatermarkFragment$3;
.super Ljava/lang/Object;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/watermark/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/watermark/WatermarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$3;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$500(Lcom/android/camera/ui/watermark/WatermarkFragment;Z)V

    .line 143
    return-void
.end method
