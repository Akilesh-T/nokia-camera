.class Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$1;
.super Ljava/lang/Object;
.source "ProcessAllImagesInFolderUtility.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;->writeOutput(Ljava/io/PrintStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;


# direct methods
.method constructor <init>(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$1;->this$0:Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)I
    .locals 3
    .param p1, "o1"    # Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;
    .param p2, "o2"    # Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;

    .prologue
    .line 589
    invoke-static {p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$000(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$000(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/drew/lang/StringUtil;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 590
    .local v0, "c1":I
    if-eqz v0, :cond_0

    .end local v0    # "c1":I
    :goto_0
    return v0

    .restart local v0    # "c1":I
    :cond_0
    invoke-static {p1}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$100(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;->access$100(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/drew/lang/StringUtil;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 586
    check-cast p1, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$1;->compare(Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;Lcom/drew/tools/ProcessAllImagesInFolderUtility$MarkdownTableOutputHandler$Row;)I

    move-result v0

    return v0
.end method
