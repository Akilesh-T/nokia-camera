.class Lcom/android/camera/SlowmotionModule$8;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowmotionModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$8;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$8;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$2000(Lcom/android/camera/SlowmotionModule;)V

    .line 1090
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$8;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$2100(Lcom/android/camera/SlowmotionModule;)V

    .line 1091
    return-void
.end method
