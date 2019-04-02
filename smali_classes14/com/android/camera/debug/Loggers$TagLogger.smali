.class Lcom/android/camera/debug/Loggers$TagLogger;
.super Ljava/lang/Object;
.source "Loggers.java"

# interfaces
.implements Lcom/android/camera/debug/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/Loggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagLogger"
.end annotation


# instance fields
.field private final mTag:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Log$Tag;)V
    .locals 0
    .param p1, "tag"    # Lcom/android/camera/debug/Log$Tag;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    .line 153
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$TagLogger;->mTag:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1, p2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    return-void
.end method
