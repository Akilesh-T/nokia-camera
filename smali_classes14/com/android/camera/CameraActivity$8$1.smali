.class Lcom/android/camera/CameraActivity$8$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$8;->onDataFocusChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$8;

.field final synthetic val$newIndex:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$8;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$8;

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/camera/CameraActivity$8$1;->this$1:Lcom/android/camera/CameraActivity$8;

    iput p2, p0, Lcom/android/camera/CameraActivity$8$1;->val$newIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8$1;->this$1:Lcom/android/camera/CameraActivity$8;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/CameraActivity$8$1;->val$newIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2600(Lcom/android/camera/CameraActivity;I)V

    .line 1113
    return-void
.end method
