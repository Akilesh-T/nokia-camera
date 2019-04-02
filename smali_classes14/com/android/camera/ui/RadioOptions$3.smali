.class Lcom/android/camera/ui/RadioOptions$3;
.super Ljava/lang/Object;
.source "RadioOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/RadioOptions;->updateListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RadioOptions;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RadioOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/RadioOptions;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/ui/RadioOptions$3;->this$0:Lcom/android/camera/ui/RadioOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/RadioOptions$3;->this$0:Lcom/android/camera/ui/RadioOptions;

    invoke-static {v0, p1}, Lcom/android/camera/ui/RadioOptions;->access$100(Lcom/android/camera/ui/RadioOptions;Landroid/view/View;)V

    .line 104
    return-void
.end method
