.class Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;
.super Ljava/lang/Object;
.source "AnnexbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnnexbSearch"
.end annotation


# instance fields
.field public match:Z

.field public startCode:I

.field final synthetic this$0:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->this$0:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->startCode:I

    .line 48
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->match:Z

    return-void
.end method
