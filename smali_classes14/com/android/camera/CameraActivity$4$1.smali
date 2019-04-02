.class Lcom/android/camera/CameraActivity$4$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$4;->onShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$4;

.field final synthetic val$data:Lcom/android/camera/data/FilmstripItem;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$4;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$4;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/camera/CameraActivity$4$1;->this$1:Lcom/android/camera/CameraActivity$4;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$4$1;->val$data:Lcom/android/camera/data/FilmstripItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 512
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$4$1;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4$1;->this$1:Lcom/android/camera/CameraActivity$4;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$4$1;->val$data:Lcom/android/camera/data/FilmstripItem;

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity$4;->access$700(Lcom/android/camera/CameraActivity$4;Lcom/android/camera/data/FilmstripItem;)V

    .line 516
    return-void
.end method
