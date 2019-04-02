.class Lcom/android/camera/CameraActivity$24$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$24;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$24;

    .prologue
    .line 3329
    iput-object p1, p0, Lcom/android/camera/CameraActivity$24$4;->this$1:Lcom/android/camera/CameraActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 6

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24$4;->this$1:Lcom/android/camera/CameraActivity$24;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/CameraActivity$24$4;->this$1:Lcom/android/camera/CameraActivity$24;

    iget-object v2, v2, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$24$4;->this$1:Lcom/android/camera/CameraActivity$24;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V

    .line 3333
    return-void
.end method
