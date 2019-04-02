.class Lcom/android/camera/app/GalleryStyleUI$3;
.super Ljava/lang/Object;
.source "GalleryStyleUI.java"

# interfaces
.implements Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;


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
    .line 214
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI$3;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDeleteClick(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "effectCategory"    # I
    .param p4, "effectKey"    # Ljava/lang/String;
    .param p5, "currentValue"    # Ljava/lang/String;
    .param p6, "abandoned"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI$3;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v0}, Lcom/android/camera/app/GalleryStyleUI;->access$600(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;

    move-result-object v0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;->onDeleteIconClick(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 218
    return-void
.end method
