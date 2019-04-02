.class Lcom/android/camera/effect/EffectChooseManager$6;
.super Ljava/lang/Object;
.source "EffectChooseManager.java"

# interfaces
.implements Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectChooseManager;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectChooseManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectChooseManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/camera/effect/EffectChooseManager$6;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLongClick(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "effectKey"    # I
    .param p2, "effectContent"    # Ljava/lang/String;
    .param p3, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/camera/effect/EffectChooseManager$6;->this$0:Lcom/android/camera/effect/EffectChooseManager;

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseManager;->access$900(Lcom/android/camera/effect/EffectChooseManager;)Lcom/android/camera/app/GalleryStyleUI;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/app/GalleryStyleUI;->getDownloadStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 377
    :cond_0
    return-void
.end method
