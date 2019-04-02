.class Lcom/android/camera/ui/AdvancedModeListView$5;
.super Ljava/lang/Object;
.source "AdvancedModeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedModeListView;->initializeModeSelectorItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AdvancedModeListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedModeListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/AdvancedModeListView;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedModeListView$5;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedModeListView$5;->this$0:Lcom/android/camera/ui/AdvancedModeListView;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedModeListView;->access$400(Lcom/android/camera/ui/AdvancedModeListView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020279

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    return-void
.end method
