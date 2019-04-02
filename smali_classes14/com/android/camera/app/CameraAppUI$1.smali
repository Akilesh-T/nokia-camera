.class Lcom/android/camera/app/CameraAppUI$1;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$1;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$1;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$000(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$1;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$000(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewStatusListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/camera/ui/PreviewStatusListener;->onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V

    .line 819
    :cond_0
    return-void
.end method
