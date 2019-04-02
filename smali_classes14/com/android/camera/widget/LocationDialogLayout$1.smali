.class Lcom/android/camera/widget/LocationDialogLayout$1;
.super Ljava/lang/Object;
.source "LocationDialogLayout.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/LocationDialogLayout;->updateSubviewReferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/LocationDialogLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/LocationDialogLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/LocationDialogLayout;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/widget/LocationDialogLayout$1;->this$0:Lcom/android/camera/widget/LocationDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/widget/LocationDialogLayout$1;->this$0:Lcom/android/camera/widget/LocationDialogLayout;

    invoke-static {v0, p2}, Lcom/android/camera/widget/LocationDialogLayout;->access$002(Lcom/android/camera/widget/LocationDialogLayout;Z)Z

    .line 84
    return-void
.end method
