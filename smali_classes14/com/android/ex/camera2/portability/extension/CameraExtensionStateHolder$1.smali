.class Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder$1;
.super Ljava/lang/Object;
.source "CameraExtensionStateHolder.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder$ConditionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

.field final synthetic val$states:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder$1;->this$0:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    iput p2, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder$1;->val$states:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder$1;->val$states:I

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder$1;->this$0:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v1

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder$1;->val$states:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
