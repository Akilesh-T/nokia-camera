.class public final Landroid/support/v8/renderscript/ScriptGroup$Builder2;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder2"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup.Builder2"


# instance fields
.field mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field mRS:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    .line 1054
    return-void
.end method

.method private addInvokeInternal(Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 2
    .param p1, "invoke"    # Landroid/support/v8/renderscript/Script$InvokeID;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v8/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .prologue
    .line 1084
    .local p3, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$Closure;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1085
    .local v0, "c":Landroid/support/v8/renderscript/ScriptGroup$Closure;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    return-object v0
.end method

.method private addKernelInternal(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 6
    .param p1, "k"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p2, "returnType"    # Landroid/support/v8/renderscript/Type;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v8/renderscript/Script$KernelID;",
            "Landroid/support/v8/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .prologue
    .line 1068
    .local p4, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptGroup$Closure;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1069
    .local v0, "c":Landroid/support/v8/renderscript/ScriptGroup$Closure;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    return-object v0
.end method

.method private seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .locals 4
    .param p1, "argsAndBindings"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1158
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p3, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1159
    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/support/v8/renderscript/ScriptGroup$Binding;

    if-eqz v2, :cond_1

    .line 1165
    :cond_0
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1166
    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/support/v8/renderscript/ScriptGroup$Binding;

    if-nez v2, :cond_2

    .line 1167
    const/4 v2, 0x0

    .line 1173
    :goto_2
    return v2

    .line 1162
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_2
    aget-object v0, p1, v1

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Binding;

    .line 1170
    .local v0, "b":Landroid/support/v8/renderscript/ScriptGroup$Binding;
    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptGroup$Binding;->getField()Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptGroup$Binding;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1173
    .end local v0    # "b":Landroid/support/v8/renderscript/ScriptGroup$Binding;
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addInput()Landroid/support/v8/renderscript/ScriptGroup$Input;
    .locals 2

    .prologue
    .line 1097
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Input;

    invoke-direct {v0}, Landroid/support/v8/renderscript/ScriptGroup$Input;-><init>()V

    .line 1098
    .local v0, "unbound":Landroid/support/v8/renderscript/ScriptGroup$Input;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    return-object v0
.end method

.method public varargs addInvoke(Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 3
    .param p1, "invoke"    # Landroid/support/v8/renderscript/Script$InvokeID;
    .param p2, "argsAndBindings"    # [Ljava/lang/Object;

    .prologue
    .line 1128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1130
    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p2, v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1131
    const/4 v2, 0x0

    .line 1133
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->addInvokeInternal(Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object v2

    goto :goto_0
.end method

.method public varargs addKernel(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 3
    .param p1, "k"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p2, "returnType"    # Landroid/support/v8/renderscript/Type;
    .param p3, "argsAndBindings"    # [Ljava/lang/Object;

    .prologue
    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1113
    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p3, v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1114
    const/4 v2, 0x0

    .line 1116
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->addKernelInternal(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object v2

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Landroid/support/v8/renderscript/ScriptGroup$Future;)Landroid/support/v8/renderscript/ScriptGroup;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outputs"    # [Landroid/support/v8/renderscript/ScriptGroup$Future;

    .prologue
    .line 1146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    const-string v1, "[^a-zA-Z0-9-]"

    const-string v2, "_"

    .line 1147
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1148
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "invalid script group name"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptGroup;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/support/v8/renderscript/ScriptGroup$Future;)V

    .line 1151
    .local v0, "ret":Landroid/support/v8/renderscript/ScriptGroup;
    return-object v0
.end method
