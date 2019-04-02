.class Lcom/android/camera/PanoramaUIMTK$2;
.super Ljava/lang/Object;
.source "PanoramaUIMTK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaUIMTK;->showUIWhenPanoStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaUIMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaUIMTK;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaUIMTK;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/camera/PanoramaUIMTK$2;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$2;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-static {v0}, Lcom/android/camera/PanoramaUIMTK;->access$000(Lcom/android/camera/PanoramaUIMTK;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    return-void
.end method
