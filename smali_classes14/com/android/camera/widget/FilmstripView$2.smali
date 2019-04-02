.class Lcom/android/camera/widget/FilmstripView$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView;->animateItemRemoval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView;

.field final synthetic val$removedItem:Lcom/android/camera/widget/FilmstripView$ViewItem;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/widget/FilmstripView$ViewItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$2;->this$0:Lcom/android/camera/widget/FilmstripView;

    iput-object p2, p0, Lcom/android/camera/widget/FilmstripView$2;->val$removedItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$2;->val$removedItem:Lcom/android/camera/widget/FilmstripView$ViewItem;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->removeViewFromHierarchy()V

    .line 1450
    return-void
.end method
