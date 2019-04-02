.class Lcom/android/camera/session/SessionStorageManagerImpl$1;
.super Ljava/lang/Object;
.source "SessionStorageManagerImpl.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/SessionStorageManagerImpl;->cleanUpExpiredSessions(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/SessionStorageManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/session/SessionStorageManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/SessionStorageManagerImpl;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/session/SessionStorageManagerImpl$1;->this$0:Lcom/android/camera/session/SessionStorageManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
