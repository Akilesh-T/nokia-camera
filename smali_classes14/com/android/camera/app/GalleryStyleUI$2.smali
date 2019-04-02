.class Lcom/android/camera/app/GalleryStyleUI$2;
.super Ljava/lang/Object;
.source "GalleryStyleUI.java"

# interfaces
.implements Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/GalleryStyleUI;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/GalleryStyleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI$2;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "effectCategory"    # I
    .param p4, "effectKey"    # Ljava/lang/String;
    .param p5, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI$2;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v0}, Lcom/android/camera/app/GalleryStyleUI;->access$500(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;->onCellLongClick(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
