.class Lcom/android/camera/tinyplanet/TinyPlanetFragment$4;
.super Ljava/lang/Object;
.source "TinyPlanetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$4;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$4;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    .line 243
    return-void
.end method
