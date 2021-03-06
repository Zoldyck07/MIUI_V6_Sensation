.class Lmiui/maml/data/Expression$StringVariableExpression;
.super Lmiui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringVariableExpression"
.end annotation


# instance fields
.field private mIndexedVar:Lmiui/maml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lmiui/maml/data/Expression$VariableExpression;-><init>(Ljava/lang/String;)V

    .line 241
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 274
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression$StringVariableExpression;)V

    .line 275
    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 7
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const-wide/16 v3, 0x0

    .line 245
    invoke-virtual {p0, p1}, Lmiui/maml/data/Expression$StringVariableExpression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-wide v3

    .line 249
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 250
    .local v2, "value":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 251
    .end local v2    # "value":Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 3
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 266
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mVar:Lmiui/maml/util/Variable;

    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mVar:Lmiui/maml/util/Variable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    .line 269
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0}, Lmiui/maml/util/IndexedStringVariable;->getIndex()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0}, Lmiui/maml/util/IndexedStringVariable;->getVersion()I

    move-result v0

    return v0
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 3
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 258
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mVar:Lmiui/maml/util/Variable;

    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mVar:Lmiui/maml/util/Variable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    .line 261
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
